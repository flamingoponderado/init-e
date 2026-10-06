import InitE.BackendStages.TargetChecks.CorrectLabels0_262
import InitE.BackendStages.TargetChecks.CorrectEncode0_262
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_262
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_262_eq : LabToTarget.sectionLabels 158276 Reencode0_262.lines [] = (159592, localLabels1_262) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 158276 159592 riscvConfig.encode
    Initial262.lines Reencode0_262.lines [] Reencode0_262_eq).trans
    (localLabels0_262_eq.trans (by kernel_rfl))
#print axioms localLabels1_262_eq
end InitE.BackendStages.TargetChecks.Correct
