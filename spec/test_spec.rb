require 'spec_helper'

describe ":VdebugOpt" do
  shared_examples "a vdebug option" do |option, value|
    context "the resulting option value" do
      before  { vim.command "VdebugOpt #{option} #{value}" }
      subject { vim.echo "g:vdebug_options['#{option}']" }

      it { should == value }
    end
  end

  context "setting debug_file" do
    it_behaves_like "a vdebug option", "debug_file", "path/to/file.log"
  end

  context "setting debug_file_level" do
    it_behaves_like "a vdebug option", "debug_file_level", "2"
  end

  context "setting debug_window_level" do
    it_behaves_like "a vdebug option", "debug_window_level", "2"
  end

  context "setting watch_window_style" do
    it_behaves_like "a vdebug option", "watch_window_style", "compact"
  end

  context "setting marker_default" do
    it_behaves_like "a vdebug option", "marker_default", "*"
  end

  context "setting marker_closed_tree" do
    it_behaves_like "a vdebug option", "marker_closed_tree", ">"
  end

  context "setting marker_open_tree" do
    it_behaves_like "a vdebug option", "marker_open_tree", "V"
  end

  context "setting ide_key" do
    it_behaves_like "a vdebug option", "ide_key", "abcd1234"
  end

  context "setting break_on_open" do
    it_behaves_like "a vdebug option", "break_on_open", "0"
  end

  context "setting on_close" do
    it_behaves_like "a vdebug option", "on_close", "detach"
  end

  context "setting timeout" do
    it_behaves_like "a vdebug option", "timeout", "20"
  end

  context "setting server" do
    it_behaves_like "a vdebug option", "server", "192.168.0.1"
  end

  context "setting port" do
    it_behaves_like "a vdebug option", "port", "20000"
  end

  context "setting continuous_mode" do
    it_behaves_like "a vdebug option", "continuous_mode", "1"
  end
end
