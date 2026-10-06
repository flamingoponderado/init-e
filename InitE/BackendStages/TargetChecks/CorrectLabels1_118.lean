import InitE.BackendStages.TargetChecks.CorrectLabels0_118
import InitE.BackendStages.TargetChecks.CorrectEncode0_118
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_118
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_118_eq : LabToTarget.sectionLabels 14440 Reencode0_118.lines [] = (14588, localLabels1_118) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 14440 14588 riscvConfig.encode
    Initial118.lines Reencode0_118.lines [] Reencode0_118_eq).trans
    (localLabels0_118_eq.trans (by kernel_rfl))
#print axioms localLabels1_118_eq
end InitE.BackendStages.TargetChecks.Correct
