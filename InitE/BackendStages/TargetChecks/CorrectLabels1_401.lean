import InitE.BackendStages.TargetChecks.CorrectLabels0_401
import InitE.BackendStages.TargetChecks.CorrectEncode0_401
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_401
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_401_eq : LabToTarget.sectionLabels 275944 Reencode0_401.lines [] = (276152, localLabels1_401) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 275944 276152 riscvConfig.encode
    Initial401.lines Reencode0_401.lines [] Reencode0_401_eq).trans
    (localLabels0_401_eq.trans (by kernel_rfl))
#print axioms localLabels1_401_eq
end InitE.BackendStages.TargetChecks.Correct
