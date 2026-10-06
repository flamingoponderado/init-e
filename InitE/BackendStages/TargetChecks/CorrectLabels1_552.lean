import InitE.BackendStages.TargetChecks.CorrectLabels0_552
import InitE.BackendStages.TargetChecks.CorrectEncode0_552
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_552
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_552_eq : LabToTarget.sectionLabels 393932 Reencode0_552.lines [] = (398576, localLabels1_552) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 393932 398576 riscvConfig.encode
    Initial552.lines Reencode0_552.lines [] Reencode0_552_eq).trans
    (localLabels0_552_eq.trans (by kernel_rfl))
#print axioms localLabels1_552_eq
end InitE.BackendStages.TargetChecks.Correct
