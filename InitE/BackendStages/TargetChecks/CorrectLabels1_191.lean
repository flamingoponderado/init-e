import InitE.BackendStages.TargetChecks.CorrectLabels0_191
import InitE.BackendStages.TargetChecks.CorrectEncode0_191
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_191
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_191_eq : LabToTarget.sectionLabels 64468 Reencode0_191.lines [] = (65780, localLabels1_191) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 64468 65780 riscvConfig.encode
    Initial191.lines Reencode0_191.lines [] Reencode0_191_eq).trans
    (localLabels0_191_eq.trans (by kernel_rfl))
#print axioms localLabels1_191_eq
end InitE.BackendStages.TargetChecks.Correct
