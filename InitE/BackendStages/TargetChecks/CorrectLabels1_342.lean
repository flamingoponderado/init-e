import InitE.BackendStages.TargetChecks.CorrectLabels0_342
import InitE.BackendStages.TargetChecks.CorrectEncode0_342
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_342
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_342_eq : LabToTarget.sectionLabels 235028 Reencode0_342.lines [] = (235296, localLabels1_342) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 235028 235296 riscvConfig.encode
    Initial342.lines Reencode0_342.lines [] Reencode0_342_eq).trans
    (localLabels0_342_eq.trans (by kernel_rfl))
#print axioms localLabels1_342_eq
end InitE.BackendStages.TargetChecks.Correct
