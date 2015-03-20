class AttributeGroupsController < ApplicationController

  def index
    attribute_groups = AttributeGroup.all
# is there a ActiveRecord query to do this faster?
    group_arr = []
    attribute_groups.each do |group|
      group_arr << {group: group, individual_attributes: group.individual_attributes}
    end
# figure out how to do JSON pretty_generate here
    render json: group_arr
  end

end
