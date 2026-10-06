import InitE.BackendStages.TargetChecks.CorrectLabels0_463
import InitE.BackendStages.TargetChecks.CorrectEncode0_463
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_463
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_463_eq : LabToTarget.sectionLabels 334872 Reencode0_463.lines [] = (336084, localLabels1_463) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 334872 336084 riscvConfig.encode
    Initial463.lines Reencode0_463.lines [] Reencode0_463_eq).trans
    (localLabels0_463_eq.trans (by kernel_rfl))
#print axioms localLabels1_463_eq
end InitE.BackendStages.TargetChecks.Correct
