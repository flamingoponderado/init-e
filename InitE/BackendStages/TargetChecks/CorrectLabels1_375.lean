import InitE.BackendStages.TargetChecks.CorrectLabels0_375
import InitE.BackendStages.TargetChecks.CorrectEncode0_375
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_375
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_375_eq : LabToTarget.sectionLabels 257768 Reencode0_375.lines [] = (257792, localLabels1_375) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 257768 257792 riscvConfig.encode
    Initial375.lines Reencode0_375.lines [] Reencode0_375_eq).trans
    (localLabels0_375_eq.trans (by kernel_rfl))
#print axioms localLabels1_375_eq
end InitE.BackendStages.TargetChecks.Correct
