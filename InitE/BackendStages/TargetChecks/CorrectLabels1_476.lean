import InitE.BackendStages.TargetChecks.CorrectLabels0_476
import InitE.BackendStages.TargetChecks.CorrectEncode0_476
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_476
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_476_eq : LabToTarget.sectionLabels 338256 Reencode0_476.lines [] = (338344, localLabels1_476) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 338256 338344 riscvConfig.encode
    Initial476.lines Reencode0_476.lines [] Reencode0_476_eq).trans
    (localLabels0_476_eq.trans (by kernel_rfl))
#print axioms localLabels1_476_eq
end InitE.BackendStages.TargetChecks.Correct
