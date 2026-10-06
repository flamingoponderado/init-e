import InitE.BackendStages.TargetChecks.CorrectLabels0_570
import InitE.BackendStages.TargetChecks.CorrectEncode0_570
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_570
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_570_eq : LabToTarget.sectionLabels 413504 Reencode0_570.lines [] = (413932, localLabels1_570) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 413504 413932 riscvConfig.encode
    Initial570.lines Reencode0_570.lines [] Reencode0_570_eq).trans
    (localLabels0_570_eq.trans (by kernel_rfl))
#print axioms localLabels1_570_eq
end InitE.BackendStages.TargetChecks.Correct
