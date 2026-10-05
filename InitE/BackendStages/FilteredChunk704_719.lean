import InitE.BackendStages.SectionChunk704_719
import InitE.BackendStages.Filtered704
import InitE.BackendStages.Filtered705
import InitE.BackendStages.Filtered706
import InitE.BackendStages.Filtered707
import InitE.BackendStages.Filtered708
import InitE.BackendStages.Filtered709
import InitE.BackendStages.Filtered710
import InitE.BackendStages.Filtered711
import InitE.BackendStages.Filtered712
import InitE.BackendStages.Filtered713
import InitE.BackendStages.Filtered714
import InitE.BackendStages.Filtered715
import InitE.BackendStages.Filtered716
import InitE.BackendStages.Filtered717
import InitE.BackendStages.Filtered718
import InitE.BackendStages.Filtered719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk704_719
def sections : LabSem.LabProgHOL 64 := [Filtered704, Filtered705, Filtered706, Filtered707, Filtered708, Filtered709, Filtered710, Filtered711, Filtered712, Filtered713, Filtered714, Filtered715, Filtered716, Filtered717, Filtered718, Filtered719]
theorem compiled_eq : SectionChunk704_719.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section704 with lines := section704.lines.filter LabFilter.notSkip }, { section705 with lines := section705.lines.filter LabFilter.notSkip }, { section706 with lines := section706.lines.filter LabFilter.notSkip }, { section707 with lines := section707.lines.filter LabFilter.notSkip }, { section708 with lines := section708.lines.filter LabFilter.notSkip }, { section709 with lines := section709.lines.filter LabFilter.notSkip }, { section710 with lines := section710.lines.filter LabFilter.notSkip }, { section711 with lines := section711.lines.filter LabFilter.notSkip }, { section712 with lines := section712.lines.filter LabFilter.notSkip }, { section713 with lines := section713.lines.filter LabFilter.notSkip }, { section714 with lines := section714.lines.filter LabFilter.notSkip }, { section715 with lines := section715.lines.filter LabFilter.notSkip }, { section716 with lines := section716.lines.filter LabFilter.notSkip }, { section717 with lines := section717.lines.filter LabFilter.notSkip }, { section718 with lines := section718.lines.filter LabFilter.notSkip }, { section719 with lines := section719.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered704_eq, Filtered705_eq, Filtered706_eq, Filtered707_eq, Filtered708_eq, Filtered709_eq, Filtered710_eq, Filtered711_eq, Filtered712_eq, Filtered713_eq, Filtered714_eq, Filtered715_eq, Filtered716_eq, Filtered717_eq, Filtered718_eq, Filtered719_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk704_719
