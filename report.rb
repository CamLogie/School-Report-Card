class Report

  def initialize(input_string_of_results)

    @raw_report_grades_data = input_string_of_results
    @parsed_raw_grade_data = []

  end

  def generate_report

    return 'No results given' if emptyString?

    @report = {Green: 0, Amber: 0, Red: 0, Uncounted: 0}

    parse_raw_grade_data
    @parsed_raw_grade_data.each do |count|
      red_green_amber_uncounted(count)
    end

    return @report

  end

  private

  def emptyString?

    return true if @p == ""

  end

  def red_green_amber_uncounted(count)
    if count == 'red' || count == 'Red'
      @report[:Red] += 1
    elsif count == 'amber' || count == 'Amber'
      @report[:Amber] += 1
    elsif count == 'green' || count == 'Green'
      @report[:Green] += 1
    else 
      @report[:Uncounted] += 1
    end
  end

  def parse_raw_grade_data

    @parsed_raw_grade_data = @raw_report_grades_data.split(',')
  
  end

end

  