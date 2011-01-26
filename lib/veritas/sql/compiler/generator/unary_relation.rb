module Veritas
  module SQL
    module Compiler
      class Generator < Visitor

        # Generates an SQL statement for a unary relation
        module UnaryRelation
          include Logic
          include Direction

          DISTINCT     = ' DISTINCT'.freeze
          EMPTY_STRING = ''.freeze
          SEPARATOR    = ', '.freeze

          # Initialize a unary relation visitor
          #
          # @return [undefined]
          #
          # @api private
          def initialize
            @distinct = DISTINCT
          end

          # Visit a Base Relation
          #
          # @param [BaseRelation] base_relation
          #
          # @return [self]
          #
          # @api private
          def visit_veritas_base_relation(base_relation)
            @name    = base_relation.name
            @from    = visit_identifier(@name)
            @columns = columns_for(base_relation.header)
            self
          end

          # Visit a Projection
          #
          # @param [Algebra::Projection] projection
          #
          # @return [self]
          #
          # @api private
          def visit_veritas_algebra_projection(projection)
            @from    = inner_query_for(projection.operand)
            @columns = columns_for(projection.header)
            self
          end

          # Visit a Rename
          #
          # @param [Algebra::Rename] rename
          #
          # @return [self]
          #
          # @api private
          def visit_veritas_algebra_rename(rename)
            @from    = inner_query_for(operand = rename.operand)
            @columns = columns_for(operand.header, rename.aliases.to_hash)
            self
          end

          # Visit a Restriction
          #
          # @param [Algebra::Restriction] restriction
          #
          # @return [self]
          #
          # @api private
          def visit_veritas_algebra_restriction(restriction)
            @from    = inner_query_for(restriction.operand)
            @columns = columns_for(restriction.header)
            @where   = dispatch restriction.predicate
            self
          end

          # Visit an Order
          #
          # @param [Relation::Operation::Order] order
          #
          # @return [self]
          #
          # @api private
          def visit_veritas_relation_operation_order(order)
            @from    = inner_query_for(order.operand)
            @columns = columns_for(order.header)
            @order   = order.directions.map { |direction| dispatch direction }
            self
          end

          # Visit a Limit
          #
          # @param [Relation::Operation::Limit] limit
          #
          # @return [self]
          #
          # @api private
          def visit_veritas_relation_operation_limit(limit)
            @from    = inner_query_for(limit.operand)
            @columns = columns_for(limit.header)
            @limit   = dispatch limit.limit
            self
          end

          # Visit an Offset
          #
          # @param [Relation::Operation::Offset] offset
          #
          # @return [self]
          #
          # @api private
          def visit_veritas_relation_operation_offset(offset)
            @from    = inner_query_for(offset.operand)
            @columns = columns_for(offset.header)
            @offset  = dispatch offset.offset
            self
          end

          # Return the SQL for the visitable object
          #
          # @example
          #   sql = unary_relation.to_s
          #
          # @return [#to_s]
          #
          # @api public
          def to_s
            return EMPTY_STRING unless visited?
            sql = 'SELECT'
            sql << @distinct
            sql << " #{@columns} FROM #{@from}"
            sql << " WHERE #{@where}"                    if @where
            sql << " ORDER BY #{@order.join(SEPARATOR)}" if @order
            sql << " LIMIT #{@limit}"                    if @limit
            sql << " OFFSET #{@offset}"                  if @offset
            sql
          end

          # Test if a visitable object has been visited
          #
          # @example
          #   visitor.visited?  # true or false
          #
          # @return [Boolean]
          #
          # @api public
          def visited?
            !@from.nil?
          end

        private

          # Return a list of columns in a header
          #
          # @param [Header] header
          #
          # @param [#[]] aliases
          #   optional aliases for the columns
          #
          # @return [#to_s]
          #
          # @api private
          def columns_for(header, aliases = {})
            header.map { |attribute| column_for(attribute, aliases) }.join(SEPARATOR)
          end

          # Return the column for an attribute
          #
          # @param [Attribute] attribute
          #
          # @param [#[]] aliases
          #   aliases for the columns
          #
          # @return [#to_s]
          #
          # @api private
          def column_for(attribute, aliases)
            column = dispatch attribute
            if aliases.key?(attribute)
              alias_for(column, aliases[attribute])
            else
              column
            end
          end

          # Return the column alias for an attribute
          #
          # @param [#to_s] column
          #
          # @param [Attribute, nil] alias_attribute
          #   attribute to use for the alias
          #
          # @return [#to_s]
          #
          # @api private
          def alias_for(column, alias_attribute)
            "#{column} AS #{visit_identifier alias_attribute.name}"
          end

          # Return an expression that can be used for the FROM
          #
          # @param [Relation] relation
          #
          # @return [#to_s]
          #
          # @api private
          def inner_query_for(relation)
            inner     = dispatch(relation)
            @distinct = EMPTY_STRING

            unless relation.kind_of?(Algebra::Projection) || relation.kind_of?(Algebra::Rename)
              @columns = '*'
            end

            "(#{inner}) AS #{visit_identifier(@name)}"
          ensure
            @distinct = DISTINCT
            @from = @where = @order = @limit = @offset = nil
          end

        end # class UnaryRelation
      end # class Generator
    end # module Compiler
  end # module SQL
end # module Veritas
