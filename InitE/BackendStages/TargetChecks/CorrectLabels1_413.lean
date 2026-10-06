import InitE.BackendStages.TargetChecks.CorrectLabels0_413
import InitE.BackendStages.TargetChecks.CorrectEncode0_413
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_413
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_413_eq : LabToTarget.sectionLabels 283308 Reencode0_413.lines [] = (284060, localLabels1_413) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 283308 284060 riscvConfig.encode
    Initial413.lines Reencode0_413.lines [] Reencode0_413_eq).trans
    (localLabels0_413_eq.trans (by kernel_rfl))
#print axioms localLabels1_413_eq
end InitE.BackendStages.TargetChecks.Correct
