import InitE.BackendStages.TargetChecks.CorrectLabels0_467
import InitE.BackendStages.TargetChecks.CorrectEncode0_467
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_467
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_467_eq : LabToTarget.sectionLabels 336380 Reencode0_467.lines [] = (336552, localLabels1_467) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 336380 336552 riscvConfig.encode
    Initial467.lines Reencode0_467.lines [] Reencode0_467_eq).trans
    (localLabels0_467_eq.trans (by kernel_rfl))
#print axioms localLabels1_467_eq
end InitE.BackendStages.TargetChecks.Correct
