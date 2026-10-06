import InitE.BackendStages.TargetChecks.CorrectLabels0_569
import InitE.BackendStages.TargetChecks.CorrectEncode0_569
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_569
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_569_eq : LabToTarget.sectionLabels 410516 Reencode0_569.lines [] = (413504, localLabels1_569) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 410516 413504 riscvConfig.encode
    Initial569.lines Reencode0_569.lines [] Reencode0_569_eq).trans
    (localLabels0_569_eq.trans (by kernel_rfl))
#print axioms localLabels1_569_eq
end InitE.BackendStages.TargetChecks.Correct
