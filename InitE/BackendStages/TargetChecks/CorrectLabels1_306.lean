import InitE.BackendStages.TargetChecks.CorrectLabels0_306
import InitE.BackendStages.TargetChecks.CorrectEncode0_306
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_306
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_306_eq : LabToTarget.sectionLabels 204120 Reencode0_306.lines [] = (204768, localLabels1_306) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 204120 204768 riscvConfig.encode
    Initial306.lines Reencode0_306.lines [] Reencode0_306_eq).trans
    (localLabels0_306_eq.trans (by kernel_rfl))
#print axioms localLabels1_306_eq
end InitE.BackendStages.TargetChecks.Correct
