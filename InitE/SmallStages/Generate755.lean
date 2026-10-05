import Tools.GenSmallStages
import InitE.SmallStages.Oracles755
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 755 InitE.WordStages.source755.2.1 InitE.WordStages.source755.2.2 InitE.SmallStages.Oracles755.oracle755
