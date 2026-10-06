import InitE.BackendStages.TargetChecks.CorrectLabels0_358
import InitE.BackendStages.TargetChecks.CorrectEncode0_358
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_358
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_358_eq : LabToTarget.sectionLabels 245856 Reencode0_358.lines [] = (245876, localLabels1_358) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 245856 245876 riscvConfig.encode
    Initial358.lines Reencode0_358.lines [] Reencode0_358_eq).trans
    (localLabels0_358_eq.trans (by kernel_rfl))
#print axioms localLabels1_358_eq
end InitE.BackendStages.TargetChecks.Correct
