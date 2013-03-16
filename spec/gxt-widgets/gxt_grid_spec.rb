require 'gxt-widgets'

describe GxtWidgets do

  describe "interface" do
    let(:gxt_grid_element) { double('gxt_grid_element') }

    before(:each) do
      gxt_grid_element.stub(:find_elements).and_return(gxt_grid_element)
    end

    context "for watir" do
      let(:watir_gxt_grid) { GxtWidgets::GxtGrid.new(gxt_grid_element, :platform => :watir_webdriver) }

      before(:each) do
        gxt_grid_element.stub(:trs).and_return(gxt_grid_element)
      end

      it "should return a table row when indexed" do
        gxt_grid_element.stub(:[]).with(1).and_return(gxt_grid_element)
        watir_gxt_grid[1].should be_instance_of GxtWidgets::GxtGridRow
      end

      it "should return the first row" do
        gxt_grid_element.stub(:[]).with(0).and_return(gxt_grid_element)
        watir_gxt_grid.first_row.should be_instance_of GxtWidgets::GxtGridRow
      end

      it "should return the last row" do
        gxt_grid_element.stub(:[]).with(-1).and_return(gxt_grid_element)
        watir_gxt_grid.last_row.should be_instance_of GxtWidgets::GxtGridRow
      end

      it "should return the number of rows" do
        gxt_grid_element.stub(:wd).and_return(gxt_grid_element)
        gxt_grid_element.should_receive(:find_elements).with(:xpath, ".//descendant::tr").and_return(gxt_grid_element)
        gxt_grid_element.should_receive(:size).and_return(2)
        watir_gxt_grid.rows.should == 2
      end

      it "should iterate over the table rows" do
        watir_gxt_grid.should_receive(:rows).and_return(2)
        gxt_grid_element.should_receive(:[]).twice
        count = 0
        watir_gxt_grid.each { |e| count += 1 }
        count.should == 2
      end

      it "should return a header row" do
        gxt_grid_element.stub(:header).and_return(gxt_grid_element)
        gxt_grid_element.should_receive(:[]).with(0)
        watir_gxt_grid.header.should be_instance_of GxtWidgets::GxtGridHeaderRow
      end
    end

    context "for selenium" do
      before(:each) do
        gxt_grid_element.stub(:[]).and_return(gxt_grid_element)
      end
      let(:selenium_gxt_grid) { GxtWidgets::GxtGrid.new(gxt_grid_element, :platform => :selenium_webdriver) }

      it "should return a table row when indexed" do
        gxt_grid_element.should_receive(:find_elements).with(:xpath, ".//descendant::tr").and_return(gxt_grid_element)
        selenium_gxt_grid[1].should be_instance_of GxtWidgets::GxtGridRow
      end

      it "should return the first row" do
        gxt_grid_element.stub(:[]).with(0).and_return(gxt_grid_element)
        selenium_gxt_grid.first_row.should be_instance_of GxtWidgets::GxtGridRow
      end

      it "should return the last row" do
        gxt_grid_element.stub(:[]).with(-1).and_return(gxt_grid_element)
        selenium_gxt_grid.last_row.should be_instance_of GxtWidgets::GxtGridRow
      end

      it "should return the number of rows" do
        gxt_grid_element.should_receive(:find_elements).with(:xpath, ".//descendant::tr").and_return(gxt_grid_element)
        gxt_grid_element.should_receive(:size).and_return(2)
        selenium_gxt_grid.rows.should == 2
      end

      it "should iterate over the table rows" do
        selenium_gxt_grid.should_receive(:rows).and_return(2)
        count = 0
        selenium_gxt_grid.each { |e| count += 1 }
        count.should == 2
      end

      it "should return a header row" do
        gxt_grid_element.stub(:header).and_return(gxt_grid_element)
        selenium_gxt_grid.header.should be_instance_of GxtWidgets::GxtGridHeaderRow
      end
    end
  end
end
