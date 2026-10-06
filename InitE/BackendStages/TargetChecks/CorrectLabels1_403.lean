import InitE.BackendStages.TargetChecks.CorrectLabels0_403
import InitE.BackendStages.TargetChecks.CorrectEncode0_403
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_403
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_403_eq : LabToTarget.sectionLabels 276700 Reencode0_403.lines [] = (278300, localLabels1_403) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 276700 278300 riscvConfig.encode
    Initial403.lines Reencode0_403.lines [] Reencode0_403_eq).trans
    (localLabels0_403_eq.trans (by kernel_rfl))
#print axioms localLabels1_403_eq
end InitE.BackendStages.TargetChecks.Correct
