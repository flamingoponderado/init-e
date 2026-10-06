import InitE.BackendStages.TargetChecks.CorrectLabels0_428
import InitE.BackendStages.TargetChecks.CorrectEncode0_428
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_428
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_428_eq : LabToTarget.sectionLabels 290824 Reencode0_428.lines [] = (291684, localLabels1_428) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 290824 291684 riscvConfig.encode
    Initial428.lines Reencode0_428.lines [] Reencode0_428_eq).trans
    (localLabels0_428_eq.trans (by kernel_rfl))
#print axioms localLabels1_428_eq
end InitE.BackendStages.TargetChecks.Correct
