import InitE.BackendStages.TargetChecks.CorrectLabels0_588
import InitE.BackendStages.TargetChecks.CorrectEncode0_588
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_588
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_588_eq : LabToTarget.sectionLabels 430372 Reencode0_588.lines [] = (431736, localLabels1_588) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 430372 431736 riscvConfig.encode
    Initial588.lines Reencode0_588.lines [] Reencode0_588_eq).trans
    (localLabels0_588_eq.trans (by kernel_rfl))
#print axioms localLabels1_588_eq
end InitE.BackendStages.TargetChecks.Correct
