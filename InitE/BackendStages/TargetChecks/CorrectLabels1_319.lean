import InitE.BackendStages.TargetChecks.CorrectLabels0_319
import InitE.BackendStages.TargetChecks.CorrectEncode0_319
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_319
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_319_eq : LabToTarget.sectionLabels 215156 Reencode0_319.lines [] = (215688, localLabels1_319) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 215156 215688 riscvConfig.encode
    Initial319.lines Reencode0_319.lines [] Reencode0_319_eq).trans
    (localLabels0_319_eq.trans (by kernel_rfl))
#print axioms localLabels1_319_eq
end InitE.BackendStages.TargetChecks.Correct
