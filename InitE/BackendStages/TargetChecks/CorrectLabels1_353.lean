import InitE.BackendStages.TargetChecks.CorrectLabels0_353
import InitE.BackendStages.TargetChecks.CorrectEncode0_353
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_353
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_353_eq : LabToTarget.sectionLabels 245712 Reencode0_353.lines [] = (245736, localLabels1_353) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 245712 245736 riscvConfig.encode
    Initial353.lines Reencode0_353.lines [] Reencode0_353_eq).trans
    (localLabels0_353_eq.trans (by kernel_rfl))
#print axioms localLabels1_353_eq
end InitE.BackendStages.TargetChecks.Correct
