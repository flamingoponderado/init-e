import InitE.BackendStages.TargetChecks.CorrectLabels0_483
import InitE.BackendStages.TargetChecks.CorrectEncode0_483
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_483
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_483_eq : LabToTarget.sectionLabels 341556 Reencode0_483.lines [] = (342120, localLabels1_483) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 341556 342120 riscvConfig.encode
    Initial483.lines Reencode0_483.lines [] Reencode0_483_eq).trans
    (localLabels0_483_eq.trans (by kernel_rfl))
#print axioms localLabels1_483_eq
end InitE.BackendStages.TargetChecks.Correct
