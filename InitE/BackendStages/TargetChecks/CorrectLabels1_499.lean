import InitE.BackendStages.TargetChecks.CorrectLabels0_499
import InitE.BackendStages.TargetChecks.CorrectEncode0_499
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_499
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_499_eq : LabToTarget.sectionLabels 348236 Reencode0_499.lines [] = (349108, localLabels1_499) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 348236 349108 riscvConfig.encode
    Initial499.lines Reencode0_499.lines [] Reencode0_499_eq).trans
    (localLabels0_499_eq.trans (by kernel_rfl))
#print axioms localLabels1_499_eq
end InitE.BackendStages.TargetChecks.Correct
