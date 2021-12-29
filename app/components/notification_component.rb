class NotificationComponent < ViewComponent::Base
  def initialize(type:, data:)
    super
    @type = type
    @data = prepare_data(data)
    @border_class = border_class
  end

  private

  def border_class
    case @type
    when 'success'
      'border-teal-400'
    when 'error'
      'border-red-400'
    when 'alert'
      'border-yellow-400'
    else
      'border-gray-400'
    end
  end

  def prepare_data(data)
    case data
    when Hash
      data
    else
      { title: data }
    end
  end
end
