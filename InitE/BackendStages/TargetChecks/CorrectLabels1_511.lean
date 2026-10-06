import InitE.BackendStages.TargetChecks.CorrectLabels0_511
import InitE.BackendStages.TargetChecks.CorrectEncode0_511
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_511
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_511_eq : LabToTarget.sectionLabels 359344 Reencode0_511.lines [] = (360216, localLabels1_511) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 359344 360216 riscvConfig.encode
    Initial511.lines Reencode0_511.lines [] Reencode0_511_eq).trans
    (localLabels0_511_eq.trans (by kernel_rfl))
#print axioms localLabels1_511_eq
end InitE.BackendStages.TargetChecks.Correct
