import InitE.BackendStages.TargetChecks.CorrectLabels0_578
import InitE.BackendStages.TargetChecks.CorrectEncode0_578
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_578
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_578_eq : LabToTarget.sectionLabels 420612 Reencode0_578.lines [] = (422196, localLabels1_578) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 420612 422196 riscvConfig.encode
    Initial578.lines Reencode0_578.lines [] Reencode0_578_eq).trans
    (localLabels0_578_eq.trans (by kernel_rfl))
#print axioms localLabels1_578_eq
end InitE.BackendStages.TargetChecks.Correct
