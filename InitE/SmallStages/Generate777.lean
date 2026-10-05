import Tools.GenSmallStages
import InitE.SmallStages.Oracles777
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 777 InitE.WordStages.source777.2.1 InitE.WordStages.source777.2.2 InitE.SmallStages.Oracles777.oracle777
