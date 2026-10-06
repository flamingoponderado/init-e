import InitE.BackendStages.TargetChecks.CorrectLabels0_538
import InitE.BackendStages.TargetChecks.CorrectEncode0_538
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_538
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_538_eq : LabToTarget.sectionLabels 383028 Reencode0_538.lines [] = (384368, localLabels1_538) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 383028 384368 riscvConfig.encode
    Initial538.lines Reencode0_538.lines [] Reencode0_538_eq).trans
    (localLabels0_538_eq.trans (by kernel_rfl))
#print axioms localLabels1_538_eq
end InitE.BackendStages.TargetChecks.Correct
