import InitE.BackendStages.TargetChecks.CorrectLabels0_423
import InitE.BackendStages.TargetChecks.CorrectEncode0_423
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_423
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_423_eq : LabToTarget.sectionLabels 288236 Reencode0_423.lines [] = (289256, localLabels1_423) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 288236 289256 riscvConfig.encode
    Initial423.lines Reencode0_423.lines [] Reencode0_423_eq).trans
    (localLabels0_423_eq.trans (by kernel_rfl))
#print axioms localLabels1_423_eq
end InitE.BackendStages.TargetChecks.Correct
