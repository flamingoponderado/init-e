import InitE.BackendStages.TargetChecks.CorrectLabels0_241
import InitE.BackendStages.TargetChecks.CorrectEncode0_241
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_241
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_241_eq : LabToTarget.sectionLabels 131104 Reencode0_241.lines [] = (133748, localLabels1_241) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 131104 133748 riscvConfig.encode
    Initial241.lines Reencode0_241.lines [] Reencode0_241_eq).trans
    (localLabels0_241_eq.trans (by kernel_rfl))
#print axioms localLabels1_241_eq
end InitE.BackendStages.TargetChecks.Correct
