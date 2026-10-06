import InitE.BackendStages.TargetChecks.CorrectLabels0_571
import InitE.BackendStages.TargetChecks.CorrectEncode0_571
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_571
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_571_eq : LabToTarget.sectionLabels 413932 Reencode0_571.lines [] = (416292, localLabels1_571) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 413932 416292 riscvConfig.encode
    Initial571.lines Reencode0_571.lines [] Reencode0_571_eq).trans
    (localLabels0_571_eq.trans (by kernel_rfl))
#print axioms localLabels1_571_eq
end InitE.BackendStages.TargetChecks.Correct
