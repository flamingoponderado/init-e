import Tools.GenSmallStages
import InitE.SmallStages.Oracles737
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 737 InitE.WordStages.source737.2.1 InitE.WordStages.source737.2.2 InitE.SmallStages.Oracles737.oracle737
