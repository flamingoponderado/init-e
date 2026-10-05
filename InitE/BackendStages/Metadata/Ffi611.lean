import InitE.BackendStages.Metadata.Data611
import InitE.BackendStages.Filtered611
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis611_eq : ffiLines Filtered611.lines = localFfis611 := by
  with_unfolding_all rfl
theorem ffiStep611 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis611) : LabToTarget.findFfiNames (Filtered611 :: rest) = suffixFfis611 := by
  rw [findFfiNames_section, localFfis611_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep611
end InitE.BackendStages.Metadata
