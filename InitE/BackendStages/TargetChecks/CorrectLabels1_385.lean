import InitE.BackendStages.TargetChecks.CorrectLabels0_385
import InitE.BackendStages.TargetChecks.CorrectEncode0_385
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_385
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_385_eq : LabToTarget.sectionLabels 265580 Reencode0_385.lines [] = (265676, localLabels1_385) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 265580 265676 riscvConfig.encode
    Initial385.lines Reencode0_385.lines [] Reencode0_385_eq).trans
    (localLabels0_385_eq.trans (by kernel_rfl))
#print axioms localLabels1_385_eq
end InitE.BackendStages.TargetChecks.Correct
