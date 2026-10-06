import InitE.BackendStages.TargetChecks.CorrectLabels0_187
import InitE.BackendStages.TargetChecks.CorrectEncode0_187
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_187
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_187_eq : LabToTarget.sectionLabels 61372 Reencode0_187.lines [] = (61580, localLabels1_187) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 61372 61580 riscvConfig.encode
    Initial187.lines Reencode0_187.lines [] Reencode0_187_eq).trans
    (localLabels0_187_eq.trans (by kernel_rfl))
#print axioms localLabels1_187_eq
end InitE.BackendStages.TargetChecks.Correct
