import InitE.BackendStages.NamedChunk256_271
import InitE.BackendStages.Section256
import InitE.BackendStages.Section257
import InitE.BackendStages.Section258
import InitE.BackendStages.Section259
import InitE.BackendStages.Section260
import InitE.BackendStages.Section261
import InitE.BackendStages.Section262
import InitE.BackendStages.Section263
import InitE.BackendStages.Section264
import InitE.BackendStages.Section265
import InitE.BackendStages.Section266
import InitE.BackendStages.Section267
import InitE.BackendStages.Section268
import InitE.BackendStages.Section269
import InitE.BackendStages.Section270
import InitE.BackendStages.Section271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk256_271
def sections : LabSem.LabProgHOL 64 := [section256, section257, section258, section259, section260, section261, section262, section263, section264, section265, section266, section267, section268, section269, section270, section271]
theorem compiled_eq : NamedChunk256_271.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named256, StackToLab.progToSectionHOL Named257, StackToLab.progToSectionHOL Named258, StackToLab.progToSectionHOL Named259, StackToLab.progToSectionHOL Named260, StackToLab.progToSectionHOL Named261, StackToLab.progToSectionHOL Named262, StackToLab.progToSectionHOL Named263, StackToLab.progToSectionHOL Named264, StackToLab.progToSectionHOL Named265, StackToLab.progToSectionHOL Named266, StackToLab.progToSectionHOL Named267, StackToLab.progToSectionHOL Named268, StackToLab.progToSectionHOL Named269, StackToLab.progToSectionHOL Named270, StackToLab.progToSectionHOL Named271] = sections
  rw [section256_eq, section257_eq, section258_eq, section259_eq, section260_eq, section261_eq, section262_eq, section263_eq, section264_eq, section265_eq, section266_eq, section267_eq, section268_eq, section269_eq, section270_eq, section271_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk256_271
