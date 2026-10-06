import InitE.BackendStages.TargetChecks.CorrectLabels0_557
import InitE.BackendStages.TargetChecks.CorrectEncode0_557
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_557
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_557_eq : LabToTarget.sectionLabels 402140 Reencode0_557.lines [] = (402700, localLabels1_557) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 402140 402700 riscvConfig.encode
    Initial557.lines Reencode0_557.lines [] Reencode0_557_eq).trans
    (localLabels0_557_eq.trans (by kernel_rfl))
#print axioms localLabels1_557_eq
end InitE.BackendStages.TargetChecks.Correct
