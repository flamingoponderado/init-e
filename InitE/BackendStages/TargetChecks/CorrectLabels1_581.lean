import InitE.BackendStages.TargetChecks.CorrectLabels0_581
import InitE.BackendStages.TargetChecks.CorrectEncode0_581
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_581
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_581_eq : LabToTarget.sectionLabels 423384 Reencode0_581.lines [] = (423924, localLabels1_581) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 423384 423924 riscvConfig.encode
    Initial581.lines Reencode0_581.lines [] Reencode0_581_eq).trans
    (localLabels0_581_eq.trans (by kernel_rfl))
#print axioms localLabels1_581_eq
end InitE.BackendStages.TargetChecks.Correct
