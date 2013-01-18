require 'spec_helper'
require 'bytes_converter'

describe BytesConverter do
    context "when getting list" do
        it "should return hash" do
            list = BytesConverter::get_units
            list.should be_kind_of Hash
        end
    end

    context "when adding unit" do
        it "should increase list size by one" do
            list = BytesConverter::get_units
            before = list.size

            new_unit = {'o' => 2}
            BytesConverter::add_unit new_unit

            list = BytesConverter::get_units
            after = list.size

            after.should be before+1
        end
    end

    context "when removing unit" do
        it "should decrease list size by one" do
            list = BytesConverter::get_units
            before = list.size

            BytesConverter::remove_unit "m"

            list = BytesConverter::get_units
            after = list.size

            after.should be before-1
        end
    end

    context "when converting size" do
        it "should return float" do
            out = BytesConverter::convert "120,3 Megabytes"
            out.should be_kind_of Float
        end
    end

    context "when converting not existant unit" do
        it "should return zero" do
            out = BytesConverter::convert "4 tomatoes"
            out.should eq(0)
        end
    end
end
