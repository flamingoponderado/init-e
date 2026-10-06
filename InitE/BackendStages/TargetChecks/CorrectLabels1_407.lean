import InitE.BackendStages.TargetChecks.CorrectLabels0_407
import InitE.BackendStages.TargetChecks.CorrectEncode0_407
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_407
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_407_eq : LabToTarget.sectionLabels 279712 Reencode0_407.lines [] = (280028, localLabels1_407) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 279712 280028 riscvConfig.encode
    Initial407.lines Reencode0_407.lines [] Reencode0_407_eq).trans
    (localLabels0_407_eq.trans (by kernel_rfl))
#print axioms localLabels1_407_eq
end InitE.BackendStages.TargetChecks.Correct
