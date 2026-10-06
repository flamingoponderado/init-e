import InitE.BackendStages.TargetChecks.CorrectLabels0_547
import InitE.BackendStages.TargetChecks.CorrectEncode0_547
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_547
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_547_eq : LabToTarget.sectionLabels 387956 Reencode0_547.lines [] = (388156, localLabels1_547) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 387956 388156 riscvConfig.encode
    Initial547.lines Reencode0_547.lines [] Reencode0_547_eq).trans
    (localLabels0_547_eq.trans (by kernel_rfl))
#print axioms localLabels1_547_eq
end InitE.BackendStages.TargetChecks.Correct
