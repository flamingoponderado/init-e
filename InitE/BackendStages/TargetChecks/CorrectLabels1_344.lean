import InitE.BackendStages.TargetChecks.CorrectLabels0_344
import InitE.BackendStages.TargetChecks.CorrectEncode0_344
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_344
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_344_eq : LabToTarget.sectionLabels 235516 Reencode0_344.lines [] = (237668, localLabels1_344) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 235516 237668 riscvConfig.encode
    Initial344.lines Reencode0_344.lines [] Reencode0_344_eq).trans
    (localLabels0_344_eq.trans (by kernel_rfl))
#print axioms localLabels1_344_eq
end InitE.BackendStages.TargetChecks.Correct
