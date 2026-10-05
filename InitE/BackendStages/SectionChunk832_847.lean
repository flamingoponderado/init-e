import InitE.BackendStages.NamedChunk832_847
import InitE.BackendStages.Section832
import InitE.BackendStages.Section833
import InitE.BackendStages.Section834
import InitE.BackendStages.Section835
import InitE.BackendStages.Section836
import InitE.BackendStages.Section837
import InitE.BackendStages.Section838
import InitE.BackendStages.Section839
import InitE.BackendStages.Section840
import InitE.BackendStages.Section841
import InitE.BackendStages.Section842
import InitE.BackendStages.Section843
import InitE.BackendStages.Section844
import InitE.BackendStages.Section845
import InitE.BackendStages.Section846
import InitE.BackendStages.Section847
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk832_847
def sections : LabSem.LabProgHOL 64 := [section832, section833, section834, section835, section836, section837, section838, section839, section840, section841, section842, section843, section844, section845, section846, section847]
theorem compiled_eq : NamedChunk832_847.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named832, StackToLab.progToSectionHOL Named833, StackToLab.progToSectionHOL Named834, StackToLab.progToSectionHOL Named835, StackToLab.progToSectionHOL Named836, StackToLab.progToSectionHOL Named837, StackToLab.progToSectionHOL Named838, StackToLab.progToSectionHOL Named839, StackToLab.progToSectionHOL Named840, StackToLab.progToSectionHOL Named841, StackToLab.progToSectionHOL Named842, StackToLab.progToSectionHOL Named843, StackToLab.progToSectionHOL Named844, StackToLab.progToSectionHOL Named845, StackToLab.progToSectionHOL Named846, StackToLab.progToSectionHOL Named847] = sections
  rw [section832_eq, section833_eq, section834_eq, section835_eq, section836_eq, section837_eq, section838_eq, section839_eq, section840_eq, section841_eq, section842_eq, section843_eq, section844_eq, section845_eq, section846_eq, section847_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk832_847
