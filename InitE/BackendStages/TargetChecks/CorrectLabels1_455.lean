import InitE.BackendStages.TargetChecks.CorrectLabels0_455
import InitE.BackendStages.TargetChecks.CorrectEncode0_455
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_455
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_455_eq : LabToTarget.sectionLabels 310132 Reencode0_455.lines [] = (310860, localLabels1_455) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 310132 310860 riscvConfig.encode
    Initial455.lines Reencode0_455.lines [] Reencode0_455_eq).trans
    (localLabels0_455_eq.trans (by kernel_rfl))
#print axioms localLabels1_455_eq
end InitE.BackendStages.TargetChecks.Correct
