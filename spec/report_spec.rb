require '../report'

describe Report do 

  # let(:test) ('green,amber,red,dave,nothing,red,red,green')

  describe '#count_grades' do 
    it ' counts each grade and increases the value of each category depending on the grade ' do 
      report = Report.new('green,amber,red,dave,nothing,red,red,green')
      expect(report.generate_report).to eq({Green: 2, Amber: 1, Red: 3, Uncounted: 2})
    end

    it ' returns no results given if input is an empty string' do
      report = Report.new('')
      expect(report.generate_report).to eq('No results given')
    end
  end



end
