import InitE.BackendStages.NamedChunk384_399
import InitE.BackendStages.Section384
import InitE.BackendStages.Section385
import InitE.BackendStages.Section386
import InitE.BackendStages.Section387
import InitE.BackendStages.Section388
import InitE.BackendStages.Section389
import InitE.BackendStages.Section390
import InitE.BackendStages.Section391
import InitE.BackendStages.Section392
import InitE.BackendStages.Section393
import InitE.BackendStages.Section394
import InitE.BackendStages.Section395
import InitE.BackendStages.Section396
import InitE.BackendStages.Section397
import InitE.BackendStages.Section398
import InitE.BackendStages.Section399
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk384_399
def sections : LabSem.LabProgHOL 64 := [section384, section385, section386, section387, section388, section389, section390, section391, section392, section393, section394, section395, section396, section397, section398, section399]
theorem compiled_eq : NamedChunk384_399.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named384, StackToLab.progToSectionHOL Named385, StackToLab.progToSectionHOL Named386, StackToLab.progToSectionHOL Named387, StackToLab.progToSectionHOL Named388, StackToLab.progToSectionHOL Named389, StackToLab.progToSectionHOL Named390, StackToLab.progToSectionHOL Named391, StackToLab.progToSectionHOL Named392, StackToLab.progToSectionHOL Named393, StackToLab.progToSectionHOL Named394, StackToLab.progToSectionHOL Named395, StackToLab.progToSectionHOL Named396, StackToLab.progToSectionHOL Named397, StackToLab.progToSectionHOL Named398, StackToLab.progToSectionHOL Named399] = sections
  rw [section384_eq, section385_eq, section386_eq, section387_eq, section388_eq, section389_eq, section390_eq, section391_eq, section392_eq, section393_eq, section394_eq, section395_eq, section396_eq, section397_eq, section398_eq, section399_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk384_399
