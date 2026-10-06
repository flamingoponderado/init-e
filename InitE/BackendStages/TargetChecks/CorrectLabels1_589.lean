import InitE.BackendStages.TargetChecks.CorrectLabels0_589
import InitE.BackendStages.TargetChecks.CorrectEncode0_589
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_589
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_589_eq : LabToTarget.sectionLabels 431736 Reencode0_589.lines [] = (433080, localLabels1_589) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 431736 433080 riscvConfig.encode
    Initial589.lines Reencode0_589.lines [] Reencode0_589_eq).trans
    (localLabels0_589_eq.trans (by kernel_rfl))
#print axioms localLabels1_589_eq
end InitE.BackendStages.TargetChecks.Correct
