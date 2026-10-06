import InitE.BackendStages.TargetChecks.CorrectLabels0_364
import InitE.BackendStages.TargetChecks.CorrectEncode0_364
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_364
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_364_eq : LabToTarget.sectionLabels 249200 Reencode0_364.lines [] = (249708, localLabels1_364) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 249200 249708 riscvConfig.encode
    Initial364.lines Reencode0_364.lines [] Reencode0_364_eq).trans
    (localLabels0_364_eq.trans (by kernel_rfl))
#print axioms localLabels1_364_eq
end InitE.BackendStages.TargetChecks.Correct
