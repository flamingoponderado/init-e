import InitE.BackendStages.TargetChecks.CorrectLabels0_426
import InitE.BackendStages.TargetChecks.CorrectEncode0_426
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_426
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_426_eq : LabToTarget.sectionLabels 290036 Reencode0_426.lines [] = (290628, localLabels1_426) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 290036 290628 riscvConfig.encode
    Initial426.lines Reencode0_426.lines [] Reencode0_426_eq).trans
    (localLabels0_426_eq.trans (by kernel_rfl))
#print axioms localLabels1_426_eq
end InitE.BackendStages.TargetChecks.Correct
