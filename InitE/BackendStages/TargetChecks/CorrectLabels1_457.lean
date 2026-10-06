import InitE.BackendStages.TargetChecks.CorrectLabels0_457
import InitE.BackendStages.TargetChecks.CorrectEncode0_457
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_457
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_457_eq : LabToTarget.sectionLabels 314740 Reencode0_457.lines [] = (315024, localLabels1_457) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 314740 315024 riscvConfig.encode
    Initial457.lines Reencode0_457.lines [] Reencode0_457_eq).trans
    (localLabels0_457_eq.trans (by kernel_rfl))
#print axioms localLabels1_457_eq
end InitE.BackendStages.TargetChecks.Correct
