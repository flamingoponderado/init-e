import InitE.BackendStages.TargetChecks.CorrectLabels0_84
import InitE.BackendStages.TargetChecks.CorrectEncode0_84
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_84
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_84_eq : LabToTarget.sectionLabels 9960 Reencode0_84.lines [] = (10120, localLabels1_84) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 9960 10120 riscvConfig.encode
    Initial84.lines Reencode0_84.lines [] Reencode0_84_eq).trans
    (localLabels0_84_eq.trans (by kernel_rfl))
#print axioms localLabels1_84_eq
end InitE.BackendStages.TargetChecks.Correct
