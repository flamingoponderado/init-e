import InitE.BackendStages.TargetChecks.CorrectLabels0_320
import InitE.BackendStages.TargetChecks.CorrectEncode0_320
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_320
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_320_eq : LabToTarget.sectionLabels 215688 Reencode0_320.lines [] = (218088, localLabels1_320) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 215688 218088 riscvConfig.encode
    Initial320.lines Reencode0_320.lines [] Reencode0_320_eq).trans
    (localLabels0_320_eq.trans (by kernel_rfl))
#print axioms localLabels1_320_eq
end InitE.BackendStages.TargetChecks.Correct
