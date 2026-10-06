import InitE.BackendStages.TargetChecks.CorrectLabels0_521
import InitE.BackendStages.TargetChecks.CorrectEncode0_521
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_521
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_521_eq : LabToTarget.sectionLabels 367468 Reencode0_521.lines [] = (368512, localLabels1_521) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 367468 368512 riscvConfig.encode
    Initial521.lines Reencode0_521.lines [] Reencode0_521_eq).trans
    (localLabels0_521_eq.trans (by kernel_rfl))
#print axioms localLabels1_521_eq
end InitE.BackendStages.TargetChecks.Correct
