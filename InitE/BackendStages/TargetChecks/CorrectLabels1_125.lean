import InitE.BackendStages.TargetChecks.CorrectLabels0_125
import InitE.BackendStages.TargetChecks.CorrectEncode0_125
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_125
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_125_eq : LabToTarget.sectionLabels 21276 Reencode0_125.lines [] = (21356, localLabels1_125) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 21276 21356 riscvConfig.encode
    Initial125.lines Reencode0_125.lines [] Reencode0_125_eq).trans
    (localLabels0_125_eq.trans (by kernel_rfl))
#print axioms localLabels1_125_eq
end InitE.BackendStages.TargetChecks.Correct
